.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;
.super Ljava/lang/Object;
.source "PresenceSubscriptionController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceSubscriptionController"

.field private static mLazySubscriptionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private static mPendingSubscriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private static mSubscriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addLazySubscription(Lcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static addPendingSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static checkLazySubscription(Lcom/sec/ims/util/ImsUri;Z)Z
    .locals 2

    .line 160
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    .line 162
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, p0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 163
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 165
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 166
    sget-object p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mLazySubscriptionQueue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 168
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 169
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static cleanExpiredSubscription()V
    .locals 4

    .line 114
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 119
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanExpiredSubscription(): expired uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v3, "PresenceSubscriptionController"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static clearPendingSubscription()V
    .locals 1

    .line 61
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method static getPendingSubscription()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mPendingSubscriptionList:Ljava/util/List;

    return-object v0
.end method

.method static getSubscription(Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 66
    const-string p0, "PresenceSubscriptionController"

    const-string p1, "getSubscription: uri is null"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 70
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 72
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    if-ne v3, p2, :cond_1

    if-nez p1, :cond_2

    .line 73
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v2, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    return-object v0
.end method

.method static getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 86
    const-string p0, "PresenceSubscriptionController"

    const-string p1, "getSubscription: subscriptionId is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 90
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 91
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method static hasSubscription(Lcom/sec/ims/util/ImsUri;)Z
    .locals 3

    .line 100
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 102
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static removeSubscription(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 129
    const-string v0, "PresenceSubscriptionController"

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSubscription: uris size is over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 142
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 144
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 150
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 151
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 152
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->remove(Lcom/sec/ims/util/ImsUri;)V

    goto :goto_1

    :cond_6
    return-void

    .line 130
    :cond_7
    :goto_2
    const-string/jumbo p0, "removeSubscription: uris null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
