.class Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;
.super Ljava/lang/Object;
.source "ImLatchingProcessor.java"


# instance fields
.field private latchingUriList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private msisdn:Ljava/lang/String;

.field private optionsExpireTimer:J

.field private receiverEnabled:Z

.field private uriListToSendOptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$maddUriToLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->addUriToLatchingList(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAfterSimChanged(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->checkAfterSimChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckTimestampInOptionsList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;J)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->checkTimestampInOptionsList(Lcom/sec/ims/util/ImsUri;J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnabled(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misExistInLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->isExistInLatchingList(Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveUriFromLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetUriList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->resetUriList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnabled(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->setEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOptionsExpireTimer(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->setOptionsExpireTimer(J)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->msisdn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->receiverEnabled:Z

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->uriListToSendOptions:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->optionsExpireTimer:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;-><init>()V

    return-void
.end method

.method private addTimestampToList(Lcom/sec/ims/util/ImsUri;JI)V
    .locals 3

    .line 225
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTimestampToList uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p4, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->uriListToSendOptions:Ljava/util/LinkedList;

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->uriListToSendOptions:Ljava/util/LinkedList;

    new-instance p4, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p4, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/Long;)V

    invoke-virtual {p0, p4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUriToLatchingList(Lcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUriToLatchingList uriLists - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkAfterSimChanged(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 167
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->msisdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->msisdn:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "other enabled sim is inserted. So, lists will be reset"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->resetUriList()V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkTimestampInOptionsList(Lcom/sec/ims/util/ImsUri;J)Z
    .locals 7

    .line 233
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkTimestampInOptionsList uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->uriListToSendOptions:Ljava/util/LinkedList;

    .line 239
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    .line 240
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;

    .line 242
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/TimeDataForOptions;->getTime()Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p2, v3

    iget-wide v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->optionsExpireTimer:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    .line 251
    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->addTimestampToList(Lcom/sec/ims/util/ImsUri;JI)V

    const/4 p0, 0x1

    return p0
.end method

.method private isEnabled()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->receiverEnabled:Z

    return p0
.end method

.method private isExistInLatchingList(Lcom/sec/ims/util/ImsUri;)Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 207
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExistInLatchingList uri - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;)Z
    .locals 2

    .line 196
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->isExistInLatchingList(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUriFromLatchingList uriList - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetUriList()V
    .locals 2

    .line 217
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resetUriList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->latchingUriList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->uriListToSendOptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->uriListToSendOptions:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_1
    return-void
.end method

.method private setEnabled(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->receiverEnabled:Z

    return-void
.end method

.method private setOptionsExpireTimer(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->optionsExpireTimer:J

    return-void
.end method
