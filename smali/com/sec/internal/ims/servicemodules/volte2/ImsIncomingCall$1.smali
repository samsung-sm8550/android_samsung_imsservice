.class Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ImsIncomingCall.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNetworkCallback: onAvailable network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for VCID"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;->-$$Nest$fgetmIsADSChanged(Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 671
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "VCID start after both ADSChanged and onAvailable are completed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x320

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 678
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultNetworkCallback: onLost network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for VCID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
