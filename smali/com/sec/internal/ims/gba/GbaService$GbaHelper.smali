.class Lcom/sec/internal/ims/gba/GbaService$GbaHelper;
.super Ljava/lang/Object;
.source "GbaService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/gba/GbaService;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/gba/GbaService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/gba/GbaService;Lcom/sec/internal/ims/gba/GbaService$GbaHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;-><init>(Lcom/sec/internal/ims/gba/GbaService;)V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 1

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authenticationRequest : onComplete "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p4, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p4}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p4

    monitor-enter p4

    .line 60
    :try_start_0
    iget-object p5, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p5}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 61
    iget-object p5, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p5}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/Pair;

    iget-object p5, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 p5, 0x0

    .line 65
    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    .line 68
    :try_start_1
    invoke-static {p3, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-interface {v0, p5, p0, p2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onKeysAvailable(I[BLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 65
    :goto_1
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onFail(ILcom/sec/internal/ims/gba/GbaException;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticationRequest : onFail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {v2}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaService$GbaHelper;->this$0:Lcom/sec/internal/ims/gba/GbaService;

    invoke-static {p0}, Lcom/sec/internal/ims/gba/GbaService;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 89
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/gba/GbaException;->getCode()I

    move-result p0

    invoke-interface {v2, v1, p0}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 86
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
