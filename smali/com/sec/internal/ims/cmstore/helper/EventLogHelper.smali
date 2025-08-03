.class public Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;
.super Ljava/lang/Object;
.source "EventLogHelper.java"


# static fields
.field public static mEventLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SimpleEventLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debugLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->debugLogAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dump(I)V
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    :cond_0
    return-void
.end method

.method public static infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->infoLogAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/helper/SimpleEventLog;->infoLogAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static initialise(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 26
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->mEventLogList:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v0, p3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
