.class public interface abstract Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;
.super Ljava/lang/Object;
.source "ISmsServiceInterface.java"


# virtual methods
.method public abstract registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSMSEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZJZ)V
.end method

.method public abstract sendSMSResponse(ILjava/lang/String;I)V
.end method

.method public abstract setMsgAppInfoToSipUa(ILjava/lang/String;)V
.end method
