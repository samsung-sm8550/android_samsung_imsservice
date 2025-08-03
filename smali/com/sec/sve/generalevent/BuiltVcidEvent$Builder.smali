.class public Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
.super Ljava/lang/Object;
.source "BuiltVcidEvent.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private final mBundle:Landroid/os/Bundle;

.field private final mEvent:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private mSessionId:I

.field private mSubId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBundle(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)Landroid/os/Bundle;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEvent(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSessionId:I

    .line 25
    iput v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSubId:I

    .line 28
    const-string v0, "VCID"

    iput-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mEvent:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/sve/generalevent/BuiltVcidEvent;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "action"

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mFileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "fileURL"

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mServiceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "serviceType"

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_2
    iget v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "sessionId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    :cond_3
    iget v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSubId:I

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "subId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    :cond_4
    new-instance v0, Lcom/sec/sve/generalevent/BuiltVcidEvent;

    invoke-direct {v0, p0}, Lcom/sec/sve/generalevent/BuiltVcidEvent;-><init>(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mFileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceType(Ljava/lang/String;)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionId(I)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .locals 0

    .line 57
    iput p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSessionId:I

    return-object p0
.end method

.method public setSubId(I)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .locals 0

    .line 62
    iput p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSubId:I

    return-object p0
.end method
