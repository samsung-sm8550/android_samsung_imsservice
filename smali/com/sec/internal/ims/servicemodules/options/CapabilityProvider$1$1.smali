.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "CapabilityProvider.java"


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fgetmLastInCallUri(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 174
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_ish(Z)V

    .line 175
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_vsh(Z)V

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 181
    invoke-static {v2, v0}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mwakeup(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyCapabilityChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 204
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_ish(Z)V

    .line 205
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_vsh(Z)V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyOwnServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    return-void
.end method
