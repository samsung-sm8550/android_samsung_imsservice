.class public interface abstract Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
.super Ljava/lang/Object;
.source "IGbaServiceModule.java"


# virtual methods
.method public abstract getBtidAndGbaKey(Landroid/telephony/gba/GbaAuthRequest;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I
.end method

.method public abstract getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I
.end method

.method public abstract getGbaCallback(I)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
.end method

.method public abstract getGbaValue(ILjava/lang/String;)Lcom/sec/internal/ims/gba/GbaValue;
.end method

.method public abstract getImei(I)Ljava/lang/String;
.end method

.method public abstract getImpi(I)Ljava/lang/String;
.end method

.method public abstract getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;
.end method

.method public abstract initGbaAccessibleObj()Z
.end method

.method public abstract isGbaUiccSupported(I)Z
.end method

.method public abstract removeGbaCallback(I)V
.end method

.method public abstract resetGbaKey(Ljava/lang/String;I)V
.end method

.method public abstract storeGbaBootstrapParams(I[BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract storeGbaDataAndGenerateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;
.end method
