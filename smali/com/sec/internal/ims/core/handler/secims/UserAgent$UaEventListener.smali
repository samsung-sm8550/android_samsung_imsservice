.class public interface abstract Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;
.super Ljava/lang/Object;
.source "UserAgent.java"


# virtual methods
.method public abstract onContactActivated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
.end method

.method public abstract onCreated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
.end method

.method public abstract onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;JZZ)V
.end method

.method public abstract onNotifyNullProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
.end method

.method public abstract onRefreshRegNotification(I)V
.end method

.method public abstract onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRegistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
.end method

.method public abstract onRegistrationError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;J)V
.end method

.method public abstract onSubscribeError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V
.end method

.method public abstract onUpdatePani(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
.end method
