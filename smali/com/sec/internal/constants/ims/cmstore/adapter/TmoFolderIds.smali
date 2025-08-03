.class public final enum Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;
.super Ljava/lang/Enum;
.source "TmoFolderIds.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

.field public static final enum VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

.field public static final enum VM_INBOX:Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$JElchcgLqS-0_XdOlMZTgJG8oc4(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->lambda$equals$0(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;
    .locals 2

    .line 6
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->VM_INBOX:Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    const/4 v1, 0x0

    const-string v2, "VV-Mail/Greetings"

    const-string v3, "VM_GREETINGS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    const/4 v1, 0x1

    const-string v2, "VV-Mail/Inbox"

    const-string v3, "VM_INBOX"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->VM_INBOX:Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    .line 6
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->$values()[Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->mName:Ljava/lang/String;

    return-void
.end method

.method public static equals(Ljava/lang/String;)Z
    .locals 2

    .line 17
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->values()[Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$equals$0(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;)Z
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;
    .locals 1

    .line 6
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;
    .locals 1

    .line 6
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/sec/internal/constants/ims/cmstore/adapter/TmoFolderIds;->mName:Ljava/lang/String;

    return-object p0
.end method
