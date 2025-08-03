.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;
.super Ljava/lang/Object;
.source "WorkflowChn.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 532
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/AutoConfigFromServer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 544
    const-string/jumbo v1, "root/vers/version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "root/vers/validity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 562
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 546
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config xml must contain atleast 2 items(version & validity)."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 550
    :cond_4
    new-instance p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v0, "no body & no cookie. something wrong"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 539
    :cond_5
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string v0, "no parsed xml data."

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
