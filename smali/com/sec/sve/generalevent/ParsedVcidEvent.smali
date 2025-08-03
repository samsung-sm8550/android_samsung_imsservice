.class public Lcom/sec/sve/generalevent/ParsedVcidEvent;
.super Lcom/sec/sve/generalevent/VcidEvent;
.source "ParsedVcidEvent.java"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mFileUrl:Ljava/lang/String;

.field private final mServiceType:Ljava/lang/String;

.field private final mSessionId:I

.field private final mSubId:I


# direct methods
.method public constructor <init>(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/sec/sve/generalevent/VcidEvent;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmEvent(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/VcidEvent;->mEvent:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmAction(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmFileUrl(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mFileUrl:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmServiceType(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mServiceType:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmSessionId(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)I

    move-result v0

    iput v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSessionId:I

    .line 18
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmSubId(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)I

    move-result p1

    iput p1, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSubId:I

    return-void
.end method


# virtual methods
.method public getFileUrl()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mFileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionId()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSessionId:I

    return p0
.end method

.method public getSubId()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSubId:I

    return p0
.end method

.method public isSetVCIDEngineEvent()Z
    .locals 1

    .line 30
    const-string v0, "SetVCIDEngine"

    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStartEvent()Z
    .locals 1

    .line 22
    const-string/jumbo v0, "start"

    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStopEvent()Z
    .locals 1

    .line 26
    const-string/jumbo v0, "stop"

    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
