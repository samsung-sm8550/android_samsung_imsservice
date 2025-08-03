.class public Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;
.super Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub;
.source "QuantumEncryptionService.java"


# static fields
.field private static final ALLOWED_PKG:Ljava/lang/String; = "com.ctq.simkey.pivot"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.QUANTUM_ENCRYPTION"

.field private static final QSS_SIGNATURE:Landroid/content/pm/Signature;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082035f30820247a00302010202042adbb04c300d06092a864886f70d01010b05003060310e300c060355040613054368696e61310e300c06035504081305416e487569310e300c060355040713054865466569310e300c060355040a13055a44584c5a310e300c060355040b13055a44584c5a310e300c060355040313055a44584c5a301e170d3231313131303035343530335a170d3436313130343035343530335a3060310e300c060355040613054368696e61310e300c06035504081305416e487569310e300c060355040713054865466569310e300c060355040a13055a44584c5a310e300c060355040b13055a44584c5a310e300c060355040313055a44584c5a30820122300d06092a864886f70d01010105000382010f003082010a0282010100adad9c252bde1e99d43f782290b398b48e275ee18518ee57d08d911fc8c01dc0a98bef655d7cc865e47a0e461cbf0fddcd35ec2af30b78078d263071f3f55f4fa4bd353cf9ee8b71b80655a850cafd30216992206f05e22ebc44f3c3c5e4b540bd073bec3a2ed6ab06b7e003bb65630aa1bfa02b5a304f0871bd11929715a754e3af33b70b9d1b116f0b5030ea975e1add9e69b0a292e199a10bb604e67e89f9355c556c095ddd1c07503cc40992641c614081b32b8971abe32baba5950c7ef27d490bfdc948c97201ae29508608436fb80d42e467139a803ea05035304a7c47f7021e51b0303e40f9c4eebe498d9e33eb0e50b06f9ab6ba3a62ac8e99f434f90203010001a321301f301d0603551d0e04160414c7d20a5bdd87e10530f23cb00a5406db7d195b38300d06092a864886f70d01010b0500038201010008a45d1fe3b6e3d86f83f6724abe8b889e03a6368cdc66e984a256542efa9b147ccc0d1a463b7aa6fb1bd08835ec7851a4597b03ca2eb26de8144961848257b139341e262cfbd48a0c0fbeaa8cc0813e147206441e45d717244fb24058a976d576a7ecadb9a72be77184a794530e8a28687446326cf017a865a5be756d4ed96b955f8707844c8d90fb28179b52a3d71ae789cbc9b8977fc92b33f22ae39c3023365a95ae9e929336cba78a8feed5cadd9053fe35d37e18582eff4b0c3d5ece4e3a3106653b8a0397ff865aaffc47a4b355caaafe201ec406456f74c6243ef7891b84caa1ab0449160b450e448d539b55d5cf5aecddb85764f2a51c28b3354651"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->QSS_SIGNATURE:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    .line 21
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mContext:Landroid/content/Context;

    .line 24
    check-cast p1, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    .line 25
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isAllowed()Ljava/lang/Boolean;
    .locals 9

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 102
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 103
    const-string v5, "com.ctq.simkey.pivot"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x8000000

    .line 105
    :try_start_0
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v4}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 106
    array-length v5, v4

    if-lez v5, :cond_1

    .line 107
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 108
    sget-object v8, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->QSS_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 114
    :goto_2
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public checkNeedGoClientApp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    sget-object p1, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkNeedGoClientApp"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->isAllowed()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 83
    const-string p0, "checkNeedGoClientApp is not allowed"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public notifyAuthenticationStatus(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyAuthenticationStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->isAllowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string p0, "notifyAuthenticationStatus is not allowed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->notifyAuthenticationStatus(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public notifyLoginResult(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyLoginResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->isAllowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-string/jumbo p0, "notifyLoginResult is not allowed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->notifyLoginResult(ILjava/lang/String;)V

    return-void
.end method

.method public notifyPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyPeerProfileStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->isAllowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string/jumbo p0, "notifyPeerProfileStatus is not allowed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->notifyPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public notifyQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyQMKeyStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->isAllowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    const-string/jumbo p0, "notifyQMKeyStatus is not allowed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->notifyQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public notifyVoLTEStatus(ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyVoLTEStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->isAllowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string/jumbo p0, "notifyVoLTEStatus is not allowed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.QUANTUM_ENCRYPTION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->notifyVoLTEStatus(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerVoLTECallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->isAllowed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    const-string/jumbo p0, "registerVoLTECallback is not allowed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)I

    move-result p0

    return p0
.end method
