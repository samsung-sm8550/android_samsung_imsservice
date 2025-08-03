.class Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"

# interfaces
.implements Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;


# instance fields
.field private result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method private constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 927
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0

    .line 926
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;)V

    return-void
.end method

.method private handleEvent(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1200(Lcom/verizon/loginclient/TokenLoginClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 942
    :try_start_0
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    .line 943
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {p0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1200(Lcom/verizon/loginclient/TokenLoginClient;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 944
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 936
    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->handleEvent(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 2

    .line 931
    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->handleEvent(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V

    return-void
.end method
