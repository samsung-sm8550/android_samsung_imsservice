.class public Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;
.super Ljava/lang/Object;
.source "SIPDataEvent.java"


# instance fields
.field mIsRequest:Z

.field mSipMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mSipMessage:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mIsRequest:Z

    return-void
.end method


# virtual methods
.method public getIsRequest()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mIsRequest:Z

    return p0
.end method

.method public getSipMessage()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mSipMessage:Ljava/lang/String;

    return-object p0
.end method
