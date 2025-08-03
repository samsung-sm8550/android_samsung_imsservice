.class public interface abstract Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;
.super Ljava/lang/Object;
.source "ITelephonyAdapter.java"


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getAppToken(Z)Ljava/lang/String;
.end method

.method public abstract getDeviceId(I)Ljava/lang/String;
.end method

.method public abstract getExistingOtp()Ljava/lang/String;
.end method

.method public abstract getExistingPortOtp()Ljava/lang/String;
.end method

.method public abstract getIdentityByPhoneId(I)Ljava/lang/String;
.end method

.method public abstract getIidToken()Ljava/lang/String;
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImsi()Ljava/lang/String;
.end method

.method public abstract getMcc()Ljava/lang/String;
.end method

.method public abstract getMnc()Ljava/lang/String;
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getMsisdn(I)Ljava/lang/String;
.end method

.method public abstract getMsisdnNumber()Ljava/lang/String;
.end method

.method public abstract getNetType()Ljava/lang/String;
.end method

.method public abstract getOtp()Ljava/lang/String;
.end method

.method public abstract getPortOtp()Ljava/lang/String;
.end method

.method public abstract getPrimaryIdentity()Ljava/lang/String;
.end method

.method public abstract getSimCountryCode()Ljava/lang/String;
.end method

.method public abstract getSipUri()Ljava/lang/String;
.end method

.method public abstract getSmsDestPort()Ljava/lang/String;
.end method

.method public abstract getSmsOrigPort()Ljava/lang/String;
.end method

.method public abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public abstract isReady()Z
.end method

.method public abstract notifyAutoConfigurationListener(IZ)V
.end method

.method public abstract onADSChanged()V
.end method

.method public abstract registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
.end method

.method public abstract registerUneregisterForOTP(Z)V
.end method

.method public abstract sendIidToken(Ljava/lang/String;)V
.end method

.method public abstract sendMsisdnNumber(Ljava/lang/String;)V
.end method

.method public abstract sendVerificationCode(Ljava/lang/String;)V
.end method

.method public abstract unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
.end method
