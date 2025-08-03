.class Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;
.super Ljava/lang/Object;
.source "UtStateMachine.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/PdnEventListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0

    .line 2203
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(ILandroid/net/Network;)V
    .locals 4

    .line 2206
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mPdnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 2208
    invoke-virtual {p2}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 2209
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fputmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)V

    .line 2212
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    .line 2213
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2214
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fgetmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2215
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2216
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    invoke-interface {p1}, Landroid/net/TransportInfo;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2218
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fputmApn(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;)V

    .line 2220
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$mupdateDnsInfo(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    .line 2221
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public onDisconnected(I)V
    .locals 4

    .line 2227
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2228
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 2229
    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fputmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)V

    .line 2230
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$mrefreshDns(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    .line 2231
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onResumed(I)V
    .locals 4

    .line 2244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v1, :cond_0

    .line 2245
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2246
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    .line 2247
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    if-eqz v0, :cond_0

    .line 2248
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    const/4 p1, 0x1

    .line 2249
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onSuspended(I)V
    .locals 4

    .line 2236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v1, :cond_0

    .line 2237
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSuspended "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2238
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    :cond_0
    return-void
.end method
