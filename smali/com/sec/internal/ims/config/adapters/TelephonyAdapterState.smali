.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;
.super Ljava/lang/Object;
.source "TelephonyAdapterState.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;


# static fields
.field protected static ABSENT_STATE:Ljava/lang/String; = "AbsentState"

.field protected static IDLE_STATE:Ljava/lang/String; = "IdleState"

.field protected static READY_STATE:Ljava/lang/String; = "ReadyState"

.field protected static SMS_DEST_PORT:Ljava/lang/String; = "37273"

.field protected static SMS_ORIG_PORT:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 0
    return-void
.end method

.method public getAppToken(Z)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExistingOtp()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExistingPortOtp()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIidToken()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImei()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPortOtp()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrimaryIdentity()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimCountryCode()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSmsDestPort()Ljava/lang/String;
    .locals 0

    .line 65
    sget-object p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->SMS_DEST_PORT:Ljava/lang/String;

    return-object p0
.end method

.method public getSmsOrigPort()Ljava/lang/String;
    .locals 0

    .line 70
    sget-object p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;->SMS_ORIG_PORT:Ljava/lang/String;

    return-object p0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isReady()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyAutoConfigurationListener(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onADSChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerUneregisterForOTP(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendIidToken(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0

    .line 0
    return-void
.end method
