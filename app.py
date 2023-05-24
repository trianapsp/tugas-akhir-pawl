from flask import Flask, render_template, request, session, redirect, url_for, flash
from models import PersonalForm, mahasiswa, dosen, mataKuliah
from models import isiPresensi, JmlhPresensi
from werkzeug.utils import secure_filename
import pymysql
import config

db = cursor = None
application = Flask(__name__)
application.config['SECRET_KEY'] = '@#123456&*()'

@application.route('/', methods = ['GET', 'POST'], endpoint='/')
def index():
    return render_template('index.html')

@application.route('/mahasiswa', methods = ['GET', 'POST'], endpoint='/mahasiswa')
def loginMhs():
    form = PersonalForm()
    mhs = mahasiswa()
    if request.method == 'POST':
        message=''
        uname = form.uname.data
        password = form.password.data
        user = mhs.selectDB(uname,password)
        if user:
            session['login'] = True
            session['nim'] = user[0]
            session['nama'] = user[1]
            session['uname'] = user[2]
            session['Prodi'] = user[4]
            session['Semester'] = user[5]
            jml_dsn = dosen()
            dsn = jml_dsn.jmlhDsn()
            jml_mk = mataKuliah()
            mk = jml_mk.jmlhMK()
            nim = session['nim']
            mk1 = isiPresensi()
            mkuliah1 = mk1.matkul1(nim)
            nim = session['nim']
            mk2 = isiPresensi()
            mkuliah2 = mk2.matkul2(nim)
            nim = session['nim']
            mk3 = isiPresensi()
            mkuliah3 = mk1.matkul3(nim)
            nim = session['nim']
            mk4 = isiPresensi()
            mkuliah4 = mk4.matkul4(nim)
            nim = session['nim']
            mk5 = isiPresensi()
            mkuliah5 = mk1.matkul5(nim)
            nim = session['nim']
            mk6 = isiPresensi()
            mkuliah6 = mk6.matkul1(nim)
            jmlh_sks = mataKuliah()
            sks = jmlh_sks.sksMK()
            return render_template('response.html', message=message, uname=uname, password=password, jml_dsn=dsn, jml_mk=mk, mk1=mkuliah1, mk2=mkuliah2, mk3=mkuliah3, mk4=mkuliah4, mk5=mkuliah5, mk6=mkuliah6, jmlh_sks=sks)
        else:
            flash ('username dan password yang anda masukan salah!')
            return redirect('/mahasiswa')

    navigasi = [
        ('/presensi-mhs', 'Presensi'),
        ('/data-matkul', 'dataMK'),
        ('/data-dosen', 'dataDsn'),
        ('/profil-mhs', 'profil-mhs')
    ]
    return render_template('form.html', form=form, navigasi=navigasi)

@application.route('/dosen', methods = ['GET', 'POST'], endpoint='/dosen')
def loginDsn():
    form = PersonalForm()
    dsn = dosen()
    if request.method == 'POST':
        message=''
        uname = form.uname.data
        password = form.password.data
        user = dsn.selectDBDsn(uname,password)
        if user:
            session['login'] = True
            session['kode_dosen'] = user[0]
            session['kode_mk'] = user[1]
            session['nama_mk'] = user[2]
            session['nama'] = user[3]
            session['uname'] = user[4]
            session['no_telepon'] = user[6]
            session['foto'] = user[7]
            session['jumlah_sks'] = user[10]
            jml_mhs = mahasiswa()
            mhs = jml_mhs.jmlhMhs()
            nama_mk = session['nama_mk']
            mk = mataKuliah()
            jml_mk = mk.MKdiampu(nama_mk)
            nama_mk = session['nama_mk']
            matkul = mataKuliah()
            jml_sks = matkul.jmlhSKS(nama_mk)
            nama_mk = session['nama_mk']
            m_1 = isiPresensi()
            minggu1 = m_1.m1(nama_mk)
            nama_mk = session['nama_mk']
            m_2 = isiPresensi()
            minggu2 = m_2.m2(nama_mk)
            nama_mk = session['nama_mk']
            m_3 = isiPresensi()
            minggu3 = m_3.m3(nama_mk)
            nama_mk = session['nama_mk']
            m_4 = isiPresensi()
            minggu4 = m_4.m4(nama_mk)
            nama_mk = session['nama_mk']
            m_5 = isiPresensi()
            minggu5 = m_5.m5(nama_mk)
            nama_mk = session['nama_mk']
            m_6 = isiPresensi()
            minggu6 = m_6.m6(nama_mk)
            nama_mk = session['nama_mk']
            m_7 = isiPresensi()
            minggu7 = m_7.m7(nama_mk)
            nama_mk = session['nama_mk']
            m_8 = isiPresensi()
            minggu8 = m_8.m8(nama_mk)
            nama_mk = session['nama_mk']
            m_9 = isiPresensi()
            minggu9 = m_9.m9(nama_mk)
            nama_mk = session['nama_mk']
            m_10 = isiPresensi()
            minggu10 = m_10.m10(nama_mk)
            nama_mk = session['nama_mk']
            m_11 = isiPresensi()
            minggu11 = m_11.m11(nama_mk)
            nama_mk = session['nama_mk']
            m_12 = isiPresensi()
            minggu12 = m_12.m12(nama_mk)
            nama_mk = session['nama_mk']
            m_13 = isiPresensi()
            minggu13 = m_13.m13(nama_mk)
            nama_mk = session['nama_mk']
            m_14 = isiPresensi()
            minggu14 = m_14.m14(nama_mk)
            nama_mk = session['nama_mk']
            m_15 = isiPresensi()
            minggu15 = m_15.m15(nama_mk)
            nama_mk = session['nama_mk']
            m_16 = isiPresensi()
            minggu16 = m_16.m16(nama_mk)
            nama_mk = session['nama_mk']
            m_17 = isiPresensi()
            minggu17 = m_17.m17(nama_mk)
            ikutUAS = JmlhPresensi()
            ikut = ikutUAS.jmlhIkutUAS()
            tidakUAS = JmlhPresensi()
            tidak = tidakUAS.jmlhTidakUAS()
            return render_template('response-dosen.html', message=message, uname=uname, password=password, jml_mhs=mhs, mk=jml_mk, matkul=jml_sks, m_1=minggu1, m_2=minggu2, m_3=minggu3, m_4=minggu4, m_5=minggu5, m_6=minggu6, m_7=minggu7, m_8=minggu8, m_9=minggu9, m_10=minggu10, m_11=minggu11, m_12=minggu12, m_13=minggu13, m_14=minggu14, m_15=minggu15, m_16=minggu16, m_17=minggu17, ikutUAS=ikut, tidakUAS=tidak )
        else:
            flash ('username dan password yang anda masukan salah!')
            return redirect('/dosen')
    navigasi = [
        ('/rekap-presensi', 'Presensi'),
        ('/data-mahasiswa', 'dataMhs'),
        ('/persentase-presensi', 'persentase'),
    ]

    return render_template('form-dosen.html', form=form, navigasi=navigasi)

@application.route('/presensi-mhs', methods=['GET', 'POST'])
def presensi():
    if request.method == 'POST':
        nim = session['nim']
        nama = session['nama']
        prodi = session['Prodi']
        semester = session['Semester']
        nama_mk = request.form['nama_mk']
        jadwal = request.form['jadwal']
        tgl = request.form['tgl']
        jam = request.form['jam']
        isi = request.form['isi']
        data = (nim, nama, prodi, semester, nama_mk, jadwal, tgl, jam, isi)
        prs = isiPresensi()
        prs.insertDB(data) 
        jml_dsn = dosen()
        dsn = jml_dsn.jmlhDsn()
        jml_mk = mataKuliah()
        mk = jml_mk.jmlhMK()
        nim = session['nim']
        mk1 = isiPresensi()
        mkuliah1 = mk1.matkul1(nim)
        nim = session['nim']
        mk2 = isiPresensi()
        mkuliah2 = mk2.matkul2(nim)
        nim = session['nim']
        mk3 = isiPresensi()
        mkuliah3 = mk1.matkul3(nim)
        nim = session['nim']
        mk4 = isiPresensi()
        mkuliah4 = mk4.matkul4(nim)
        nim = session['nim']
        mk5 = isiPresensi()
        mkuliah5 = mk1.matkul5(nim)
        nim = session['nim']
        mk6 = isiPresensi()
        mkuliah6 = mk6.matkul1(nim)
        jmlh_sks = mataKuliah()
        sks = jmlh_sks.sksMK()           
        return render_template('response.html', jml_dsn=dsn, jml_mk=mk, mk1=mkuliah1, mk2=mkuliah2, mk3=mkuliah3, mk4=mkuliah4, mk5=mkuliah5, mk6=mkuliah6, jmlh_sks=sks)
    else:
        return render_template ('presensi-mhs.html')

@application.route('/rekap-presensi', methods=['GET', 'POST'])
def rekap():
    dsn = dosen()
    container = []
    nama_mk = session['nama_mk']
    container = dsn.selectRekap(nama_mk)
    return render_template('rekap-presensi.html', container=container)

@application.route('/data-mahasiswa', methods=['GET', 'POST'])
def dataMhs():
    mhs = mahasiswa()
    container = []
    container = mhs.selectDataMhs()
    return render_template('data-mahasiswa.html', container=container)

@application.route('/data-matkul', methods=['GET', 'POST'])
def dataMK():
    mk = mataKuliah()
    container1 = []
    container1 = mk.selectMK()
    matkul = mataKuliah()
    container2 = []
    nim = session['nim']
    container2 = matkul.selectDB(nim)
    return render_template('data-matkul.html', container1=container1, container2=container2)

@application.route('/data-dosen', methods=['GET', 'POST'])
def dataDsn():
    dsn = dosen()
    container = []
    container = dsn.selectDsn()
    return render_template('data-dosen.html', container=container)

@application.route('/persentase', methods=['GET', 'POST'], endpoint='persentase')
def persentase():
    dsn = dosen()
    container = []
    container = dsn.persentase()
    return render_template('persentase.html', container=container)

@application.route('/profil-mhs', methods = ['GET', 'POST'], endpoint='profil-mhs')
def profilMhs():
    return render_template('profil-mhs.html')

@application.route('/profil-dsn', methods = ['GET', 'POST'])
def profilDsn():
    return render_template('profil-dsn.html')

@application.route('/dashboard-mhs',  methods = ['GET', 'POST'])
def dashboardMhs():
    jml_dsn = dosen()
    dsn = jml_dsn.jmlhDsn()
    jml_mk = mataKuliah()
    mk = jml_mk.jmlhMK()
    nim = session['nim']
    mk1 = isiPresensi()
    mkuliah1 = mk1.matkul1(nim)
    nim = session['nim']
    mk2 = isiPresensi()
    mkuliah2 = mk2.matkul2(nim)
    nim = session['nim']
    mk3 = isiPresensi()
    mkuliah3 = mk1.matkul3(nim)
    nim = session['nim']
    mk4 = isiPresensi()
    mkuliah4 = mk4.matkul4(nim)
    nim = session['nim']
    mk5 = isiPresensi()
    mkuliah5 = mk1.matkul5(nim)
    nim = session['nim']
    mk6 = isiPresensi()
    mkuliah6 = mk6.matkul1(nim)
    jmlh_sks = mataKuliah()
    sks = jmlh_sks.sksMK()
    return render_template('response.html', jml_dsn=dsn, jml_mk=mk, mk1=mkuliah1, mk2=mkuliah2, mk3=mkuliah3, mk4=mkuliah4, mk5=mkuliah5, mk6=mkuliah6, jmlh_sks=sks)

@application.route('/dashboard-dsn',  methods = ['GET', 'POST'])
def dashboardDsn():
    jml_mhs = mahasiswa()
    mhs = jml_mhs.jmlhMhs()
    nama_mk = session['nama_mk']
    mk = mataKuliah()
    jml_mk = mk.MKdiampu(nama_mk)
    nama_mk = session['nama_mk']
    matkul = mataKuliah()
    jml_sks = matkul.jmlhSKS(nama_mk)
    nama_mk = session['nama_mk']
    m_1 = isiPresensi()
    minggu1 = m_1.m1(nama_mk)
    nama_mk = session['nama_mk']
    m_2 = isiPresensi()
    minggu2 = m_2.m2(nama_mk)
    nama_mk = session['nama_mk']
    m_3 = isiPresensi()
    minggu3 = m_3.m3(nama_mk)
    nama_mk = session['nama_mk']
    m_4 = isiPresensi()
    minggu4 = m_4.m4(nama_mk)
    nama_mk = session['nama_mk']
    m_5 = isiPresensi()
    minggu5 = m_5.m5(nama_mk)
    nama_mk = session['nama_mk']
    m_6 = isiPresensi()
    minggu6 = m_6.m6(nama_mk)
    nama_mk = session['nama_mk']
    m_7 = isiPresensi()
    minggu7 = m_7.m7(nama_mk)
    nama_mk = session['nama_mk']
    m_8 = isiPresensi()
    minggu8 = m_8.m8(nama_mk)
    nama_mk = session['nama_mk']
    m_9 = isiPresensi()
    minggu9 = m_9.m9(nama_mk)
    nama_mk = session['nama_mk']
    m_10 = isiPresensi()
    minggu10 = m_10.m10(nama_mk)
    nama_mk = session['nama_mk']
    m_11 = isiPresensi()
    minggu11 = m_11.m11(nama_mk)
    nama_mk = session['nama_mk']
    m_12 = isiPresensi()
    minggu12 = m_12.m12(nama_mk)
    nama_mk = session['nama_mk']
    m_13 = isiPresensi()
    minggu13 = m_13.m13(nama_mk)
    nama_mk = session['nama_mk']
    m_14 = isiPresensi()
    minggu14 = m_14.m14(nama_mk)
    nama_mk = session['nama_mk']
    m_15 = isiPresensi()
    minggu15 = m_15.m15(nama_mk)
    nama_mk = session['nama_mk']
    m_16 = isiPresensi()
    minggu16 = m_16.m16(nama_mk)
    nama_mk = session['nama_mk']
    m_17 = isiPresensi()
    minggu17 = m_17.m17(nama_mk)
    ikutUAS = JmlhPresensi()
    ikut = ikutUAS.jmlhIkutUAS()
    tidakUAS = JmlhPresensi()
    tidak = tidakUAS.jmlhTidakUAS()
    return render_template('response-dosen.html', jml_mhs=mhs, mk=jml_mk, matkul=jml_sks, m_1=minggu1, m_2=minggu2, m_3=minggu3, m_4=minggu4, m_5=minggu5, m_6=minggu6, m_7=minggu7, m_8=minggu8, m_9=minggu9, m_10=minggu10, m_11=minggu11, m_12=minggu12, m_13=minggu13, m_14=minggu14, m_15=minggu15, m_16=minggu16, m_17=minggu17, ikutUAS=ikut, tidakUAS=tidak )

@application.route('/detail-rekapMhs/<nim>',  methods = ['GET', 'POST'],endpoint='detail-rekapMhs')
def detailRekapMhs(nim):
    dsn = dosen()
    container = []
    nama_mk = session['nama_mk']
    data = (nim,nama_mk)
    container = dsn.persenPrs(data)
    mhs = mahasiswa()
    nama = mhs.selectMhs(nim)
    namaMhs = nama[1]
    nimMhs = nama[0]
    prs = isiPresensi()
    jmlhHadir = prs.jmlhHadir(data)
    jmlhSakit = prs.jmlhSakit(data)
    jmlhIzin = prs.jmlhIzin(data)
    jmlhAlfa = prs.jmlhAlfa(data)
    prsn = (jmlhHadir[0]/jmlhHadir[0]*100) - (jmlhIzin[0]/17*100) - (jmlhSakit[0]/17*100) - (jmlhAlfa[0]/17*100)
    if prsn >= 75 :
        keterangan = 'Mahasiswa dapat mengikuti UAS'
    else :
        keterangan = 'Mahasiswa tidak dapat mengikuti UAS'
    if request.method == 'POST':
        # nim = request.form['nim']
        jmlhHadir = request.form['jmlh_hadir']
        jmlhSakit = request.form['jmlh_sakit']
        jmlhIzin = request.form['jmlh_izin']
        jmlhAlfa = request.form['jmlh_alfa']
        prsn = request.form['prsn']
        keterangan = request.form['keterangan']
        nama_mk = request.form['nama_mk']
        data = (jmlhHadir, jmlhSakit, jmlhIzin, jmlhAlfa, prsn, keterangan, nama_mk, nim)
        prsn = isiPresensi()
        prsn.updateRekap(data)
        return redirect('/rekap-presensi-detail')
    else:
        return render_template('detail-rekapMhs.html', container=container, nama_mk=nama_mk, namaMhs=namaMhs, nimMhs=nimMhs, jmlhHadir=jmlhHadir, jmlhSakit=jmlhSakit, jmlhIzin=jmlhIzin, jmlhAlfa=jmlhAlfa, prsn=prsn, keterangan=keterangan)

@application.route('/rekap-presensi-detail', methods = ['GET', 'POST'])
def rekapDetail():
    jp = JmlhPresensi()
    container = []
    container = jp.selectJP()
    return render_template('rekap-presensi-detail.html', container=container)

if __name__ == '__main__':
    application.run(debug=True)