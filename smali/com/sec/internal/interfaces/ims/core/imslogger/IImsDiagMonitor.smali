.class public interface abstract Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
.super Ljava/lang/Object;
.source "IImsDiagMonitor.java"


# static fields
.field public static final DM_HTTP:I = 0x1

.field public static final DM_SIP:I = 0x0

.field public static final HTTP_NORMAL:I = 0x64

.field public static final SIP_NORMAL:I


# virtual methods
.method public abstract handleRegistrationEvent(Lcom/sec/ims/ImsRegistration;Z)V
.end method

.method public abstract notifyCallStatus(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
