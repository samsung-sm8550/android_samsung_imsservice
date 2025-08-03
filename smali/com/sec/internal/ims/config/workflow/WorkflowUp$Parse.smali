.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

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

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 590
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 598
    const-string/jumbo v1, "root/vers/version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "root/vers/validity"

    .line 599
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsXmlReceived:Z

    .line 608
    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnValue(Ljava/lang/String;)V

    .line 610
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-object v0

    .line 600
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "parsedXml need to contain version, validity items"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 602
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const-string/jumbo v2, "root/policy/sms_port"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSmsPort:Ljava/lang/String;

    .line 603
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-object v0

    .line 605
    :cond_3
    new-instance p0, Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;

    const-string v0, "body and cookie are null"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 595
    :cond_4
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string/jumbo v0, "parsedXml is null"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
