.class Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;
.super Landroid/telephony/TelephonyCallback;
.source "CapabilityDiscoveryModule.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;


# instance fields
.field mNetworkType:I

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method public static synthetic $r8$lambda$5RLW0zygU7_beNpufp_YeGbwFis(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->lambda$onDataConnectionStateChanged$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$nmSwCCWSNMVId8eUaw4OLRnyFx4(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->lambda$fetchCapabilities$1(I)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 1295
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    const/4 p1, 0x0

    .line 1297
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->mNetworkType:I

    return-void
.end method

.method private hasCshFeature(I)Z
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmOwnList(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmOwnList(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;

    move-result-object p0

    .line 1336
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$fetchCapabilities$1(I)V
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 1342
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    return-void
.end method

.method private synthetic lambda$onDataConnectionStateChanged$0(II)V
    .locals 2

    .line 1324
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->mNetworkType:I

    if-eq p1, v0, :cond_0

    .line 1325
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->mNetworkType:I

    .line 1326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->hasCshFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDataConnectionStateChanged(): state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", networkType="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapabilityDiscModule"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->fetchCapabilities(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method fetchCapabilities(I)V
    .locals 2

    .line 1340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 2

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1304
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fputmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)V

    .line 1306
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->hasCshFeature(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1310
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->fetchCapabilities(I)V

    goto :goto_0

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 1312
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fputmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)V

    .line 1313
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->hasCshFeature(I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1317
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->fetchCapabilities(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
