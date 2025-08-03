.class public Lcom/sec/sve/generalevent/BuiltVcidEvent;
.super Lcom/sec/sve/generalevent/VcidEvent;
.source "BuiltVcidEvent.java"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/sec/sve/generalevent/VcidEvent;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->-$$Nest$fgetmEvent(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/VcidEvent;->mEvent:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->-$$Nest$fgetmBundle(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuiltVcidEvent [mEvent= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/sve/generalevent/VcidEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
