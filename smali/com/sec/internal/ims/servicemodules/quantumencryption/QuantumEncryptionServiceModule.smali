.class public Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "QuantumEncryptionServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;


# static fields
.field private static final APP_KEY_DEBUG:Ljava/lang/String; = "BBCC0DB28C9B291BCCA4F817AB8A58F79F60646F79D021578203AA2039BEB67E95B3F52FBB70165DC0D887D956691636E611579C19DC15A9A382BACB39098A8291F0D953E8D5D0F1169AB9328A6C3E4A0451784CDF69076DC87689CEC7D4CE4396335778A1FAB1E7B4680740CF45075AA75758F56582BC9B2436E796759B4D375FB054BFE495EFD1CDCBFE71D5E3624BBEBE7DF08DFF3E1B673524F713E3547DFF32D1186C2EDA295583F9053BEFD00C55DC079454BE7AC4DEBF3FF5675E843F862A7BB68A497A188A6B893D36DACDB1204EFC8B72A32FE2690C5FDA8B9095DD31027DC5930DE2ACDD04A810CAFBF8231902B8E366AC11C7BB5B2408219F56FD8C6788B92A3672FC4A60ABF85F6BB2ECE77C4128723CA670AF349EAF8AB9CB443977A017F321F49A8E93F4B7E5A3D32E5CCE8A1002EEB4A26F21BE94B6EBDD553211547111D6284DE2F6D3A0389833B59E24EB2B48DC956BD055F2A8112C3BD50A80E0F5298C3DF95D66FB8E9BE22669C8EC6D12BBD63F70C6460A088510CCFB"

.field private static final APP_KEY_USER:Ljava/lang/String; = "BBCC0DB28C9B291BCCA4F817AB8A58F79F60646F79D021578203AA2039BEB67E95B3F52FBB70165DC0D887D956691636E611579C19DC15A9A382BACB39098A82058EC22645C2EB31B17EF2900AA67C6C7E5C702A9F43EA43E8BA291D66D005C36E8341D8081F42465CCA7903405CC4F8A7ADCE4C23210CC12B3B994740207CE746168B22203446D9BD74AA605A63B2710CFE556E742972916543ADB00BD38C2D7A6E8F8B17B5EBFA90E15ECD8BE03E2EC682C8A1F6BA812B45F009F9E13E3C6A148B7BF88F4EF3A01AE00AC54FC5638208894D2E6040EE682FECA86BF05B69FE48348C0090D378FD43DBE4E718495709257A5E764844E32B8EB2DE18F234831038887A2373E10ECC051D6394D0262AEB293E0BC2BFEF5A7704AD7298D854B1C67368034BC16335D49C79AB695697D6B099010AA9E1CA20EFD152696017F23ED0CC0B9C1E6E44EAF36AAB7D2691514048B363270EB007776B05726F20DA19FFDF27A23D03EDAB6465D8EF60498658421DB8A55968FE8E2D68DA45C6F85D9782CA"

.field private static final LOG_TAG:Ljava/lang/String; = "QuantumEncryptionServiceModule"

.field private static final ORGANIZATION_CODE:Ljava/lang/String; = "3401040010000004"

.field private static final QSS_PACKAGE_NAME:Ljava/lang/String; = "com.ctq.simkey.pivot"


# instance fields
.field private mAuthStatus:I

.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mLoginStatus:I

.field private mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;


# direct methods
.method public static synthetic $r8$lambda$EGtrg75WEaC3OrQo27CksDyNELM(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->lambda$onRequestQMKey$2(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I9tQxHTUdj8GKtoaDOb1RynebJU(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->lambda$onRequestPeerProfileStatus$1(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7F7LrTUf7_2wTQF85RsMVG5JjI(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->lambda$onGetVoLTEStatusComment$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$f4rj-yOq49S362cBeH7jZvnnXNU(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->lambda$onGetVoLTEStatus$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$f5Tafssm3Z6pKC8TS7nK0-yMj7Q(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->lambda$onRequestAuthentication$0(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k9I_NuShoJrtiDJcf30W9uUi-Jc(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->lambda$onRequestQMKeyWithDelay$3(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mY4neNDaZW7e22P4KQvkZL0dHfc(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxHangUpEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->lambda$onHangUp$6(Lcom/voltecrypt/service/SxHangUpEntity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mAuthStatus:I

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mLoginStatus:I

    .line 49
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->registerPackageEventReceiver()V

    .line 52
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p1, p2, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private declared-synchronized getAuthStatus()I
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mAuthStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleQuantumAuthenticationStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQuantumAuthenticationStatus fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->setAuthStatus(I)V

    .line 86
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result p1

    if-nez p1, :cond_1

    .line 89
    const-string p1, "Auth Success!!!"

    goto :goto_0

    .line 91
    :cond_1
    const-string p1, "Auth fail!!!"

    .line 93
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private handleQuantumLoginResult(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V
    .locals 3

    .line 98
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQuantumLoginResult fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->getAuthStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQuantumLoginResult abnormal authStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->getAuthStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mLoginStatus:I

    return-void
.end method

.method private handleQuantumPeerProfileStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V
    .locals 6

    .line 108
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSessionId()I

    move-result v1

    .line 111
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getQtSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getRequestMark()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->updateQuantumPeerProfileStatus(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleQuantumQMKeyStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V
    .locals 7

    .line 116
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveCallSessionId()I

    move-result v1

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getQtSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getKey()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getRequestMark()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->updateQuantumQMKeyStatus(IILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method private handleQuantumVoLteStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V
    .locals 4

    .line 124
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleQuantumVoLteStatus fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;->getStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->resetAuthStatus()V

    goto :goto_1

    .line 128
    :cond_0
    const-string/jumbo p1, "ro.build.type"

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "BBCC0DB28C9B291BCCA4F817AB8A58F79F60646F79D021578203AA2039BEB67E95B3F52FBB70165DC0D887D956691636E611579C19DC15A9A382BACB39098A82058EC22645C2EB31B17EF2900AA67C6C7E5C702A9F43EA43E8BA291D66D005C36E8341D8081F42465CCA7903405CC4F8A7ADCE4C23210CC12B3B994740207CE746168B22203446D9BD74AA605A63B2710CFE556E742972916543ADB00BD38C2D7A6E8F8B17B5EBFA90E15ECD8BE03E2EC682C8A1F6BA812B45F009F9E13E3C6A148B7BF88F4EF3A01AE00AC54FC5638208894D2E6040EE682FECA86BF05B69FE48348C0090D378FD43DBE4E718495709257A5E764844E32B8EB2DE18F234831038887A2373E10ECC051D6394D0262AEB293E0BC2BFEF5A7704AD7298D854B1C67368034BC16335D49C79AB695697D6B099010AA9E1CA20EFD152696017F23ED0CC0B9C1E6E44EAF36AAB7D2691514048B363270EB007776B05726F20DA19FFDF27A23D03EDAB6465D8EF60498658421DB8A55968FE8E2D68DA45C6F85D9782CA"

    goto :goto_0

    :cond_1
    const-string p1, "BBCC0DB28C9B291BCCA4F817AB8A58F79F60646F79D021578203AA2039BEB67E95B3F52FBB70165DC0D887D956691636E611579C19DC15A9A382BACB39098A8291F0D953E8D5D0F1169AB9328A6C3E4A0451784CDF69076DC87689CEC7D4CE4396335778A1FAB1E7B4680740CF45075AA75758F56582BC9B2436E796759B4D375FB054BFE495EFD1CDCBFE71D5E3624BBEBE7DF08DFF3E1B673524F713E3547DFF32D1186C2EDA295583F9053BEFD00C55DC079454BE7AC4DEBF3FF5675E843F862A7BB68A497A188A6B893D36DACDB1204EFC8B72A32FE2690C5FDA8B9095DD31027DC5930DE2ACDD04A810CAFBF8231902B8E366AC11C7BB5B2408219F56FD8C6788B92A3672FC4A60ABF85F6BB2ECE77C4128723CA670AF349EAF8AB9CB443977A017F321F49A8E93F4B7E5A3D32E5CCE8A1002EEB4A26F21BE94B6EBDD553211547111D6284DE2F6D3A0389833B59E24EB2B48DC956BD055F2A8112C3BD50A80E0F5298C3DF95D66FB8E9BE22669C8EC6D12BBD63F70C6460A088510CCFB"

    .line 129
    :goto_0
    new-instance v0, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;

    const-string v1, "com.sec.imsservice"

    const-string v2, "0"

    const-string v3, "3401040010000004"

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/voltecrypt/service/SxRequestAuthenticationEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onGetVoLTEStatus$4()V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->onGetVoLTEStatus()V

    return-void
.end method

.method private synthetic lambda$onGetVoLTEStatusComment$5()V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->onGetVoLTEStatusComment()V

    return-void
.end method

.method private synthetic lambda$onHangUp$6(Lcom/voltecrypt/service/SxHangUpEntity;)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)V

    return-void
.end method

.method private synthetic lambda$onRequestAuthentication$0(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V

    return-void
.end method

.method private synthetic lambda$onRequestPeerProfileStatus$1(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)V

    return-void
.end method

.method private synthetic lambda$onRequestQMKey$2(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V

    return-void
.end method

.method private synthetic lambda$onRequestQMKeyWithDelay$3(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V

    return-void
.end method

.method private registerPackageEventReceiver()V
    .locals 3

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v1, "com.ctq.simkey.pivot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 372
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized setAuthStatus(I)V
    .locals 0

    monitor-enter p0

    .line 77
    :try_start_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mAuthStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 391
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of QuantumEncryptionService:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 394
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 62
    const-string p0, "mmtel"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->handleQuantumVoLteStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->handleQuantumQMKeyStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->handleQuantumPeerProfileStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->handleQuantumLoginResult(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V

    goto :goto_0

    .line 232
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->handleQuantumAuthenticationStatus(Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;)V

    :goto_0
    return-void
.end method

.method public isSuccessAuthAndLogin()Z
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->getAuthStatus()I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mLoginStatus:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyAuthenticationStatus(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 153
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyQuantumAuthenticationStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requestMark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setStatus(I)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setComment(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 158
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setRequestMark(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 159
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->build()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    move-result-object p2

    const/4 p3, 0x1

    .line 160
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyAuthenticationStatus status: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x7ffffffe

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public notifyLoginResult(ILjava/lang/String;)V
    .locals 4

    .line 218
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyLoginResult status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;-><init>()V

    .line 220
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setStatus(I)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setToken(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 222
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->build()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    move-result-object p2

    const/4 v0, 0x2

    .line 223
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x7ffffffa

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method public notifyPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 168
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPeerProfileStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " comment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " qtSessionId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requestMark: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;-><init>()V

    .line 171
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setStatus(I)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setComment(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 173
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setQtSessionId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 174
    invoke-virtual {p2, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setRequestMark(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->build()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    move-result-object p2

    const/4 p3, 0x3

    .line 176
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-result-object p2

    .line 178
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result p2

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " sessionId: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x7ffffffd

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public notifyQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
    .locals 4

    .line 186
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyQMKeyStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " comment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " qtSessionId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requestMark: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;-><init>()V

    .line 189
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setStatus(I)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setComment(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 191
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setQtSessionId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 192
    invoke-virtual {p2, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setKey([B)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 193
    invoke-virtual {p2, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setRequestMark(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 194
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->build()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    move-result-object p2

    const/4 p3, 0x4

    .line 195
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-result-object p2

    .line 197
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result p2

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " sessionId: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x7ffffffc

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public notifyVoLTEStatus(ILjava/lang/String;)I
    .locals 4

    .line 205
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyVoLTEStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " comment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;-><init>()V

    .line 207
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setStatus(I)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->setComment(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;

    move-result-object p2

    .line 209
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam$Builder;->build()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumNotifyParam;

    move-result-object p2

    const/4 v0, 0x5

    .line 210
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x7ffffffb

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onGetVoLTEStatus()I
    .locals 4

    .line 318
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetVoLTEStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result v2

    const v3, -0x7ffffff5

    if-nez v2, :cond_0

    .line 320
    const-string/jumbo v1, "onGetVoLTEStatus auth and login fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 322
    const-string p0, "not requested"

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 325
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 327
    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->c(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onGetVoLTEStatusComment()I
    .locals 4

    .line 333
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetVoLTEStatusComment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result v2

    const v3, -0x7ffffff4

    if-nez v2, :cond_0

    .line 335
    const-string/jumbo v1, "onGetVoLTEStatusComment auth and login fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 337
    const-string p0, "not requested"

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 340
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 342
    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->c(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)V
    .locals 3

    .line 350
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHangUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result v1

    const v2, -0x7ffffff3

    if-nez v1, :cond_0

    .line 352
    const-string/jumbo p1, "onHangUp auth and login fail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 354
    const-string p0, "not requested"

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    .line 357
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxHangUpEntity;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "onHangUp"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 359
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->c(I)V

    return-void
.end method

.method public onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V
    .locals 3

    .line 258
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestAuthentication "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "onRequestAuthentication"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const p0, -0x7ffffff9

    .line 261
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->c(I)V

    return-void
.end method

.method public onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)I
    .locals 5

    .line 266
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestPeerProfileStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-result-object v1

    .line 268
    invoke-virtual {p1}, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;->getRequestMark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result v1

    .line 269
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result v2

    const v3, -0x7ffffff8

    if-nez v2, :cond_0

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestPeerProfileStatus("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") auth and login fail"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",not requested"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 275
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRequestPeerProfileStatus sessionId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)I
    .locals 5

    .line 283
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestQMKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->getRequestMark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result v1

    .line 286
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result v2

    const v3, -0x7ffffff7

    if-nez v2, :cond_0

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestQMKey("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") auth and login fail"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",not requested"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 292
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRequestQMKey sessionId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onRequestQMKeyWithDelay(Lcom/voltecrypt/service/SxRequestQMKeyEntity;I)I
    .locals 6

    .line 300
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestQMKeyWithDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-result-object v1

    .line 302
    invoke-virtual {p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity;->getRequestMark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result v1

    .line 303
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result v2

    const v3, -0x7ffffff6

    if-nez v2, :cond_0

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onRequestQMKeyWithDelay("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") auth and login fail"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",not requested"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 309
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V

    int-to-long v4, p2

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRequestQMKeyWithDelay sessionId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delayMs: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)I
    .locals 2

    .line 144
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerVoLTECallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mNotifier:Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)V

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const p0, -0x7fffffff

    .line 147
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->c(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public resetAuthStatus()V
    .locals 1

    const/4 v0, -0x1

    .line 364
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionServiceModule;->setAuthStatus(I)V

    return-void
.end method
