.class Lcom/sec/internal/ims/util/HttpAuthGenerator$1;
.super Ljava/lang/Object;
.source "HttpAuthGenerator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$response:[Ljava/lang/String;

.field final synthetic val$wwwAuthenticateHeader:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$response:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$wwwAuthenticateHeader:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$requestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 231
    iget-object p1, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$response:[Ljava/lang/String;

    iget-object p4, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$wwwAuthenticateHeader:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$requestUrl:Ljava/lang/String;

    invoke-static {p5}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$method:Ljava/lang/String;

    invoke-static {p4, p5, v0, p2, p3}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onFail(ILcom/sec/internal/ims/gba/GbaException;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/util/HttpAuthGenerator$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
