.class public abstract Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
.super Ljava/lang/Object;
.source "StackEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactActivated(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDeregistered(ILcom/sec/ims/util/SipError;JZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDnsResponse(Ljava/lang/String;Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onISIMAuthRequested(ILjava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRefreshRegNotification(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onRegImpuNotification(ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRegInfoNotification(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRegistered(ILjava/util/List;Ljava/util/List;Lcom/sec/ims/util/SipError;JILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/util/SipError;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onSubscribed(ILcom/sec/ims/util/SipError;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUpdatePani()V
    .locals 0

    .line 0
    return-void
.end method

.method public onUpdateRouteTableRequested(IILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onX509CertVerifyRequested(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;)V
    .locals 0

    .line 0
    return-void
.end method
