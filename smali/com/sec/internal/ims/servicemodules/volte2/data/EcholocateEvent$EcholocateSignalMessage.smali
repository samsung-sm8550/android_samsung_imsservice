.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# instance fields
.field callId:Ljava/lang/String;

.field contents:Ljava/lang/String;

.field cseq:Ljava/lang/String;

.field isEpdgCall:Z

.field line1:Ljava/lang/String;

.field origin:Ljava/lang/String;

.field peerNumber:Ljava/lang/String;

.field reason:Ljava/lang/String;

.field sessionid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->origin:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->line1:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->callId:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->cseq:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->sessionid:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->reason:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->contents:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->peerNumber:Ljava/lang/String;

    .line 59
    iput-boolean p9, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall:Z

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public getContents()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->contents:Ljava/lang/String;

    return-object p0
.end method

.method public getCseq()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->cseq:Ljava/lang/String;

    return-object p0
.end method

.method public getLine1()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->line1:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerNumber()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->peerNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionid()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->sessionid:Ljava/lang/String;

    return-object p0
.end method

.method public isEpdgCall()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall:Z

    return p0
.end method
