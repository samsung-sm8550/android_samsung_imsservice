.class Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;
.super Ljava/util/HashMap;
.source "ResipTranslatorCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v0, "message/cpim"

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->TEXT_PLAIN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "application/im-iscomposing+xml"

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->ISCOMPOSING_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "message/imdn+xml"

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->IMDN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "*"

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "application/vnd.oma.cpm-groupdata+xml"

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
