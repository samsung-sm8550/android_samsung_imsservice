.class public Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;
.super Ljava/lang/Object;
.source "ConfCallSetupData.java"


# instance fields
.field private mCallType:I

.field private mConferenceUri:Ljava/lang/String;

.field private mExtraSipHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigUri:Lcom/sec/ims/util/ImsUri;

.field private mParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReferRemoveUriType:Ljava/lang/String;

.field private mReferUriAsserted:Ljava/lang/String;

.field private mReferUriType:Ljava/lang/String;

.field private mSessionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribeDialogType:Ljava/lang/String;

.field private mSubscribeRequired:Ljava/lang/String;

.field private mSupportPrematureEnd:Z

.field private mUseAnonymousUpdate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSessionIds:Ljava/util/List;

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mExtraSipHeaders:Ljava/util/HashMap;

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mConferenceUri:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSessionIds:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mCallType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSessionIds:Ljava/util/List;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mExtraSipHeaders:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mConferenceUri:Ljava/lang/String;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mParticipants:Ljava/util/List;

    .line 47
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mCallType:I

    return-void
.end method


# virtual methods
.method public enableSubscription(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSubscribeRequired:Ljava/lang/String;

    return-void
.end method

.method public getCallType()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mCallType:I

    return p0
.end method

.method public getConferenceUri()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mConferenceUri:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraSipHeaders()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mExtraSipHeaders:Ljava/util/HashMap;

    return-object p0
.end method

.method public getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mParticipants:Ljava/util/List;

    return-object p0
.end method

.method public getReferUriAsserted()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferUriAsserted:Ljava/lang/String;

    return-object p0
.end method

.method public getReferUriType()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferUriType:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoveReferUriType()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferRemoveUriType:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSessionIds:Ljava/util/List;

    return-object p0
.end method

.method public getSubscribeDialogType()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSubscribeDialogType:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportPrematureEnd()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSupportPrematureEnd:Z

    return p0
.end method

.method public getUseAnonymousUpdate()Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mUseAnonymousUpdate:Ljava/lang/String;

    return-object p0
.end method

.method public isSubscriptionEnabled()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSubscribeRequired:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraSipHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mExtraSipHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public setReferUriAsserted(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferUriAsserted:Ljava/lang/String;

    return-void
.end method

.method public setReferUriType(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferUriType:Ljava/lang/String;

    return-void
.end method

.method public setRemoveReferUriType(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferRemoveUriType:Ljava/lang/String;

    return-void
.end method

.method public setSubscribeDialogType(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSubscribeDialogType:Ljava/lang/String;

    return-void
.end method

.method public setSupportPrematureEnd(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSupportPrematureEnd:Z

    return-void
.end method

.method public setUseAnonymousUpdate(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mUseAnonymousUpdate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfCallSetupData [mConferenceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mConferenceUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrigUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSessionIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mParticipants:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscribeRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSubscribeRequired:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscribeDialogType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSubscribeDialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferUriType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferUriType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferRemoveUriType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferRemoveUriType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", use Asserted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mReferUriAsserted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useAnonymousUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mUseAnonymousUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportPrematureEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;->mSupportPrematureEnd:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
