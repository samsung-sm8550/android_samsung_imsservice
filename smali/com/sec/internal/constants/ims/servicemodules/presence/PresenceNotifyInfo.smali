.class public Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;
.super Ljava/lang/Object;
.source "PresenceNotifyInfo.java"


# instance fields
.field private mPhoneId:I

.field private mPidfXmls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:Ljava/lang/String;

.field private mSubscriptionState:Ljava/lang/String;

.field private mSubscriptionStateReason:Ljava/lang/String;

.field private mUriTerminatedReason:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mPhoneId:I

    .line 19
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionId:Ljava/lang/String;

    .line 20
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionState:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionStateReason:Ljava/lang/String;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mPidfXmls:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mUriTerminatedReason:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPidfXmls(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mPidfXmls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mPidfXmls:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUriTerminatedReason(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mUriTerminatedReason:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPhoneId()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mPhoneId:I

    return p0
.end method

.method public getPidfXmls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mPidfXmls:Ljava/util/List;

    return-object p0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionId:Ljava/lang/String;

    return-object p0
.end method

.method public getSubscriptionState()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionState:Ljava/lang/String;

    return-object p0
.end method

.method public getSubscriptionStateReason()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionStateReason:Ljava/lang/String;

    return-object p0
.end method

.method public getUriTerminatedReason()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mUriTerminatedReason:Ljava/util/List;

    return-object p0
.end method

.method public setPidfXmls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mPidfXmls:Ljava/util/List;

    return-void
.end method

.method public setSubscriptionState(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionState:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionStateReason(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mSubscriptionStateReason:Ljava/lang/String;

    return-void
.end method

.method public setUriTerminatedReason(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->mUriTerminatedReason:Ljava/util/List;

    return-void
.end method
