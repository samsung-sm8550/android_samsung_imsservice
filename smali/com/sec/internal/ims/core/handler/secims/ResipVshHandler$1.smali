.class Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;
.super Ljava/lang/Object;
.source "ResipVshHandler.java"

# interfaces
.implements Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "sve connected."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 0
    return-void
.end method
