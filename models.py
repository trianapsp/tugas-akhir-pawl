from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField
from flask import *
import pymysql
import config

class PersonalForm(FlaskForm):
    uname = StringField('Username : ')
    password = PasswordField('Password : ')
    submit = SubmitField('Login')

db = cursor = None

class mahasiswa :
    def __init__(self, nim=None, nama=None, username=None, password=None, prodi=None, semester=None, foto=None):
        self.nim = nim
        self.nama = nama
        self.username = username
        self.password = password
        self.prodi = prodi
        self.semester = semester
        self.foto = foto

    def openDB(self):
        global db, cursor
        db = pymysql.connect(
            host = config.DB_HOST,
            user = config.DB_USER,
            password = config.DB_PASSWORD,
            database = config.DB_NAME)
        cursor = db.cursor()
    
    def closeDB(self):
        global db, cursor
        db.close()
    
    def selectDB(self,u,p):
        self.openDB()
        cursor.execute("SELECT * FROM mahasiswa WHERE username = % s and password = % s", (u,p))
        user = cursor.fetchone ()
        return user
    
    def selectDataMhs(self):
        self.openDB()
        cursor.execute("SELECT * FROM mahasiswa")
        container = []
        for nim,nama,username,password,Prodi,Semester in cursor.fetchall():
            container.append((nim,nama,Prodi,Semester))
        self.closeDB()
        return container
    
    def selectMhs(self,data):
        self.openDB()
        cursor.execute("SELECT * FROM mahasiswa where nim=%s"%data)
        container = cursor.fetchone()
        return container

    def jmlhMhs(self):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM mahasiswa")
        container = cursor.fetchone()
        return container
    
class dosen :
    def __init__(self, kode_mk=None, nama=None, username=None, password=None, no_telepon=None):
        self.kode_mk = kode_mk
        self.nama = nama
        self.username = username
        self.password = password
        self.no_telepon = no_telepon

    def openDB(self):
        global db, cursor
        db = pymysql.connect(
            host = config.DB_HOST,
            user = config.DB_USER,
            password = config.DB_PASSWORD,
            database = config.DB_NAME)
        cursor = db.cursor()
    
    def closeDB(self):
        global db, cursor
        db.close()
    
    def selectDBDsn(self,u,p):
        self.openDB()
        cursor.execute("SELECT * FROM dosen inner join mata_kuliah on dosen.kode_mk = mata_kuliah.kode_mk where username = % s and password = % s", (u,p))
        user = cursor.fetchone ()
        return user
    
    def selectRekap(self,data):
        self.openDB()
        cursor.execute("SELECT nim,nama,prodi,semester,nama_mk,jadwal,tgl,jam,status,count(*) as jml FROM isi_presensi WHERE nama_mk='%s' AND jadwal!=''GROUP BY nama,jadwal,status"%data)
        container = cursor.fetchall()
        self.closeDB()
        return container
    
    def selectDsn(self):
        self.openDB()
        cursor.execute("SELECT * FROM dosen INNER JOIN mata_kuliah ON dosen.kode_mk = mata_kuliah.kode_mk")
        container = []
        for kode_dosen,kode_mk,nama_mk,nama,username,password,no_telepon,kode_mk,nama_mk,jumlah_sks,kode_dosen in cursor.fetchall():
            container.append((kode_dosen,kode_mk,nama_mk,nama,no_telepon,jumlah_sks))
        self.closeDB()
        return container
    
    def persenPrs(self, data):
        self.openDB()
        cursor.execute("SELECT * FROM isi_presensi WHERE nim='%s' and nama_mk='%s' ORDER BY jadwal"%data)
        container = cursor.fetchall()
        self.closeDB()
        print(container)
        return container
    
    def persentase(self):
        self.openDB()
        cursor.execute("SELECT * FROM mahasiswa")
        container = cursor.fetchall()
        self.closeDB()
        print(container)
        return container
    
    def jmlhDsn(self):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM dosen")
        container = cursor.fetchone()
        return container

class isiPresensi :
    def __init__(self, nim=None, nama=None, prodi=None, semester=None, nama_mk=None, jadwal=None, tgl=None, jam=None, status=None):
        self.nim = nim
        self.nama = nama
        self.prodi = prodi
        self.semester = semester
        self.nama_mk = nama_mk
        self.jadwal = jadwal
        self.tgl = tgl
        self.jam = jam
        self.status = status
    
    def openDB(self):
        global db, cursor
        db = pymysql.connect(
            host = config.DB_HOST,
            user = config.DB_USER,
            password = config.DB_PASSWORD,
            database = config.DB_NAME)
        cursor = db.cursor()

    def closeDB(self):
        global db, cursor
        db.close()
    
    def insertDB(self, data):
        self.openDB()
        cursor.execute("INSERT INTO isi_presensi (nim,nama,prodi,semester,nama_mk,jadwal,tgl,jam,status) VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')" % data)
        db.commit()
        self.closeDB()

    def getDBbyNim(self, nim):
        self.openDB()
        cursor.execute("SELECT * FROM mahasiswa WHERE nim='%s' " % nim)
        data = cursor.fetchone()
        return data

    def jmlhHadir(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND status='Hadir' AND nama_mk='%s' AND jadwal !=''" % data)
        data = cursor.fetchone()
        return data
    
    def jmlhIzin(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND status='Izin' AND nama_mk='%s' AND jadwal !=''" % data)
        data = cursor.fetchone()
        return data
    
    def jmlhSakit(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND status='Sakit' AND nama_mk='%s' AND jadwal !=''" % data)
        data = cursor.fetchone()
        return data
    
    def jmlhAlfa(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND status='Alpa' AND nama_mk='%s' AND jadwal !=''" % data)
        data = cursor.fetchone()
        return data
    
    def updateRekap(self, data):
        self.openDB()
        cursor.execute("UPDATE jmlh_presensi SET jmlh_hadir='%s', jmlh_sakit='%s', jmlh_izin='%s', jmlh_alfa='%s', persen='%s', keterangan='%s', nama_mk='%s' WHERE nim='%s' " % data)
        db.commit()
        db.close()
    
    def m1(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 1' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m2(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 2' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m3(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 3' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container

    def m4(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 4' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m5(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 5' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m6(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 6' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m7(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 7' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m8(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 8' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m9(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 9' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m10(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 10' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m11(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 11' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m12(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 12' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m13(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 13' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m14(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 14' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m15(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 15' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m16(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 16' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def m17(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE jadwal='Minggu 17' AND status='Hadir' AND nama_mk='%s'" % data)
        container = cursor.fetchone()
        return container
    
    def matkul1(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND nama_mk='Arsitektur & Sistem Enterprise' AND status='Hadir'" % data)
        container = cursor.fetchone()
        return container
    
    def matkul2(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND nama_mk='Arsitektur Komputer & Sistem Operasi' AND status='Hadir'" % data)
        container = cursor.fetchone()
        return container
    
    def matkul3(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND nama_mk='Pemrograman Basis Data' AND status='Hadir'" % data)
        container = cursor.fetchone()
        return container
    
    def matkul4(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND nama_mk='Pengantar Statistika & Ilmu Data' AND status='Hadir'" % data)
        container = cursor.fetchone()
        return container
    
    def matkul5(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND nama_mk='Pengembangan Aplikasi Web Lanjut' AND status='Hadir'" % data)
        container = cursor.fetchone()
        return container
    
    def matkul6(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM isi_presensi WHERE nim='%s' AND nama_mk='Rekayasa Perangkat Lunak' AND status='Hadir'" % data)
        container = cursor.fetchone()
        return container
    
class mataKuliah :
    def __init__(self, kode_mk=None, nama_mk=None, jumlah_sks=None, kode_dosen=None):
        self.kode_mk = kode_mk
        self.nama_mk = nama_mk
        self.jumlah_sks = jumlah_sks
        self.kode_dosen = kode_dosen

    def openDB(self):
        global db, cursor
        db = pymysql.connect(
            host = config.DB_HOST,
            user = config.DB_USER,
            password = config.DB_PASSWORD,
            database = config.DB_NAME)
        cursor = db.cursor()
    
    def closeDB(self):
        global db, cursor
        db.close()

    def selectMK(self):
        self.openDB()
        cursor.execute("SELECT * FROM mata_kuliah")
        container = []
        for kode_mk,nama_mk,jumlah_sks,kode_dosen in cursor.fetchall():
            container.append((kode_mk,nama_mk,jumlah_sks,kode_dosen))
        self.closeDB()
        return container
    
    def selectDB(self,data):
        self.openDB()
        cursor.execute("SELECT * FROM mata_kuliah INNER JOIN jmlh_presensi ON mata_kuliah.nama_mk = jmlh_presensi.nama_mk WHERE nim='%s'" % data)
        container = []
        for kode_mk,nama_mk,jumlah_sks,kode_dosen,nim,nama_mk,jmlh_sakit,jmlh_izin,jmlh_hadir,jmlh_alfa,persen,keterangan in cursor.fetchall():
            container.append((nama_mk,jmlh_hadir,jmlh_sakit,jmlh_izin,jmlh_alfa,persen,keterangan))
        self.closeDB()
        return container
    
    def jmlhMK(self):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM mata_kuliah")
        container = cursor.fetchone()
        return container
    
    def MKdiampu(self, data):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM mata_kuliah WHERE nama_mk='%s'"% data)
        container = cursor.fetchone()
        return container
    
    def jmlhSKS(self, data):
        self.openDB()
        cursor.execute("SELECT jumlah_sks FROM mata_kuliah WHERE nama_mk='%s'"% data)
        container = cursor.fetchone()
        return container
    
    def sksMK(self):
        self.openDB()
        cursor.execute("SELECT jumlah_sks FROM mata_kuliah")
        container = cursor.fetchall()
        return container
    
class JmlhPresensi():
    
    def __init__(self, jmlh_hadir=None, jmlh_sakit=None, jmlh_izin=None, jmlh_alfa=None):
        self.jmlh_hadir = jmlh_hadir
        self.jmlh_sakit = jmlh_sakit
        self.jmlh_izin = jmlh_izin
        self.jmlh_alfa = jmlh_alfa

    def openDB(self):
        global db, cursor
        db = pymysql.connect(
            host = config.DB_HOST,
            user = config.DB_USER,
            password = config.DB_PASSWORD,
            database = config.DB_NAME)
        cursor = db.cursor()
    
    def closeDB(self):
        global db, cursor
        db.close()

    def selectJP(self):
        self.openDB()
        cursor.execute("SELECT * FROM jmlh_presensi")
        container = cursor.fetchall()
        self.closeDB()
        return container
    
    def jmlhTidakUAS(self):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM jmlh_presensi WHERE keterangan='Mahasiswa tidak dapat mengikuti UAS' ")
        container = cursor.fetchone()
        return container
    
    def jmlhIkutUAS(self):
        self.openDB()
        cursor.execute("SELECT COUNT(*) FROM jmlh_presensi WHERE keterangan='Mahasiswa dapat mengikuti UAS' ")
        container = cursor.fetchone()
        return container

