.class public Lcom/sec/internal/helper/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# instance fields
.field public exception:Ljava/lang/Throwable;

.field public result:Ljava/lang/Object;

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    .line 67
    iput-object p3, p0, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public static forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;
    .locals 2

    .line 39
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 41
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method
