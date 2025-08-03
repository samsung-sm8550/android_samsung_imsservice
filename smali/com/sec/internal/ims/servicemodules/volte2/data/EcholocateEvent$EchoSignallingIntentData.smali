.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# instance fields
.field private networkBand:Ljava/lang/String;

.field private networkSignal:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    .line 219
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->networkBand:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->networkSignal:Ljava/lang/String;

    .line 221
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->networkType:Ljava/lang/String;

    .line 222
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNetworkBand()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->networkBand:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->networkSignal:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method public getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->time:Ljava/lang/String;

    return-object p0
.end method
