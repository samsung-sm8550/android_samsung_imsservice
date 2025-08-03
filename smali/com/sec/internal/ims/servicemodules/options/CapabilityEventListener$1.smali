.class Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;
.super Ljava/lang/Object;
.source "CapabilityEventListener.java"

# interfaces
.implements Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

.field final synthetic val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

.field final synthetic val$uris:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$uris:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRespondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->-$$Nest$fgetmCapabilityDiscovery(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;)Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/util/ImsUri;

    .line 79
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getFeatureTags()Ljava/util/Set;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getLastSeen()I

    move-result v5

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v6

    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;II)Z

    return-void
.end method

.method public onRespondToCapabilityRequestWithError(ILjava/lang/String;)V
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->-$$Nest$fgetmCapabilityDiscovery(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;)Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$uris:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;->val$event:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v4

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;IILjava/lang/String;)Z

    return-void
.end method
