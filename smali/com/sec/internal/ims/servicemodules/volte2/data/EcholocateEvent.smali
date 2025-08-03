.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# instance fields
.field mRtpData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

.field mSignalData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

.field mType:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRtpData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mRtpData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    return-object p0
.end method

.method public getSignalData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mSignalData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mType:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    return-object p0
.end method

.method public setRtpData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 250
    new-instance v7, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mRtpData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    return-void
.end method

.method public setSignalData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 240
    new-instance v10, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mSignalData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    return-void
.end method

.method public setType(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mType:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    return-void
.end method
