.class Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;
.super Ljava/lang/Object;
.source "UtStateMachine.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0

    .line 2255
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 1

    .line 2258
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 2264
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/internal/ims/gba/GbaException;

    if-eqz v0, :cond_0

    .line 2265
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/gba/GbaException;

    .line 2266
    invoke-virtual {v0}, Lcom/sec/internal/ims/gba/GbaException;->getCode()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f7

    .line 2271
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xb

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method
