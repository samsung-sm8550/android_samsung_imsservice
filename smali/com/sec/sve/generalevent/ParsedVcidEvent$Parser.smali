.class public Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;
.super Ljava/lang/Object;
.source "ParsedVcidEvent.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private final mEvent:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private mSessionId:I

.field private mSubId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAction(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEvent(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFileUrl(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mFileUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceType(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mSubId:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mSessionId:I

    .line 56
    iput v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mSubId:I

    .line 59
    const-string v0, "VCID"

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse()Lcom/sec/sve/generalevent/ParsedVcidEvent;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mAction:Ljava/lang/String;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    const-string v1, "fileURL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mFileUrl:Ljava/lang/String;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "serviceType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mServiceType:Ljava/lang/String;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mSessionId:I

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "subId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mSubId:I

    .line 73
    :cond_4
    new-instance v0, Lcom/sec/sve/generalevent/ParsedVcidEvent;

    invoke-direct {v0, p0}, Lcom/sec/sve/generalevent/ParsedVcidEvent;-><init>(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)V

    return-object v0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method
