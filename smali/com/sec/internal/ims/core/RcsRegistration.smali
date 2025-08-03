.class public Lcom/sec/internal/ims/core/RcsRegistration;
.super Ljava/lang/Object;
.source "RcsRegistration.java"


# instance fields
.field private mStringParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RcsRegistration$Builder;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/sec/internal/ims/core/RcsRegistration$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RcsRegistration$1;-><init>(Lcom/sec/internal/ims/core/RcsRegistration;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RcsRegistration;->mStringParams:Ljava/util/Map;

    .line 19
    const-string p0, "UserPwd"

    invoke-static {p1}, Lcom/sec/internal/ims/core/RcsRegistration$Builder;->-$$Nest$fgetmPassword(Lcom/sec/internal/ims/core/RcsRegistration$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBuilder()Lcom/sec/internal/ims/core/RcsRegistration$Builder;
    .locals 1

    .line 23
    new-instance v0, Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RcsRegistration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sec/internal/ims/core/RcsRegistration;->mStringParams:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
