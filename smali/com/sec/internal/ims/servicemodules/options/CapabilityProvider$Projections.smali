.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;
.super Ljava/lang/Object;
.source "CapabilityProvider.java"


# static fields
.field static final FEATURE_TAG_PROJECTION:[Ljava/lang/String;

.field static final INCALL_PROJECTION:[Ljava/lang/String;

.field static final SERVICE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 976
    const-string v7, "additional_info"

    const-string/jumbo v8, "number"

    const-string v0, "_id"

    const-string v1, "feature_tag"

    const-string v2, "is_enabled"

    const-string v3, "int_name"

    const-string v4, "int_category"

    const-string/jumbo v5, "sip_uri"

    const-string v6, "displayname"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    .line 982
    const-string/jumbo v6, "sip_uri"

    const-string/jumbo v7, "service_name"

    const-string v1, "_id"

    const-string v2, "feature_tag"

    const-string v3, "is_enabled"

    const-string v4, "int_name"

    const-string v5, "int_category"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->INCALL_PROJECTION:[Ljava/lang/String;

    .line 987
    const-string v0, "feature_tag"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->FEATURE_TAG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
