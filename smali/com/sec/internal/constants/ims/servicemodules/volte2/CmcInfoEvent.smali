.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;
.super Ljava/lang/Object;
.source "CmcInfoEvent.java"


# instance fields
.field private mExternalCallId:Ljava/lang/String;

.field private mRecordEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mRecordEvent:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mExternalCallId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mRecordEvent:I

    .line 15
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mExternalCallId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExternalCallId()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mExternalCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordEvent()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mRecordEvent:I

    return p0
.end method

.method public setExternalCallId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mExternalCallId:Ljava/lang/String;

    return-void
.end method

.method public setRecordEvent(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;->mRecordEvent:I

    return-void
.end method
