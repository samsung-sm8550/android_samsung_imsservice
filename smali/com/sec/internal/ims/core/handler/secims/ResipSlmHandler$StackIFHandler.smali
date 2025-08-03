.class final Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;
.super Landroid/os/Handler;
.source "ResipSlmHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Landroid/os/Looper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStackResponseHandler.handleMessage(): unhandled event - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->-$$Nest$mhandleRejectSlmResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->-$$Nest$mhandleAcceptSlmResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->-$$Nest$mhandleNotify(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->-$$Nest$mhandleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->-$$Nest$mhandleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    goto :goto_0

    .line 143
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->-$$Nest$mhandleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    :goto_0
    return-void
.end method
