.class public Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
.super Ljava/lang/Object;
.source "PresenceSubscription.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EXPIRED:I = 0x2

.field public static final FAILED:I = 0x6

.field public static final FETCH_DONE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceSubscription"

.field public static final ONLINE:I = 0x1

.field public static final REQUESTED:I = 0x0

.field public static final RETRIED:I = 0x5


# instance fields
.field private mDropUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mExpiry:I

.field private mId:Ljava/lang/String;

.field private mPhoneId:I

.field private mRetryCount:I

.field private mSingleFetch:Z

.field private mState:I

.field private mTimestamp:Ljava/util/Date;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

.field private mUriList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    .line 44
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    .line 45
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 46
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mSingleFetch:Z

    return-void
.end method


# virtual methods
.method public addDropUriAll(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUriAll(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clone()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 189
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->clone()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object p0

    return-object p0
.end method

.method public contains(Lcom/sec/ims/util/ImsUri;)Z
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsDropUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDropUris()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    return-object p0
.end method

.method public getExpiry()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    return p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mPhoneId:I

    return p0
.end method

.method public getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    return-object p0
.end method

.method public getRetryCount()I
    .locals 0

    .line 170
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    return p0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method public getUriList()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    return-object p0
.end method

.method public isExpired()Z
    .locals 9

    .line 145
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 150
    iget v3, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 151
    iput v2, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isLongLivedSubscription()Z
    .locals 6

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 179
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLongLivedSubscription: interval from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", offset "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 181
    const-string v0, "PresenceSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0xbb8

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSingleFetch()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mSingleFetch:Z

    return p0
.end method

.method public remove(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mUriList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mDropUris:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public retrySubscription()V
    .locals 1

    .line 174
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    return-void
.end method

.method public setExpiry(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mExpiry:I

    return-void
.end method

.method public setPhoneId(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mPhoneId:I

    return-void
.end method

.method public setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mType:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mRetryCount:I

    return-void
.end method

.method public setSingleFetch(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mSingleFetch:Z

    return-void
.end method

.method public updateState(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mState:I

    return-void
.end method

.method public updateTimestamp()V
    .locals 1

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->mTimestamp:Ljava/util/Date;

    return-void
.end method
