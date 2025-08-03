.class Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$1;
.super Ljava/lang/Object;
.source "ContactServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$FilterContactInfo;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/api/ContactServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inScope(Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;)Z
    .locals 0

    .line 271
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/ContactInfo;->getRegistrationState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
