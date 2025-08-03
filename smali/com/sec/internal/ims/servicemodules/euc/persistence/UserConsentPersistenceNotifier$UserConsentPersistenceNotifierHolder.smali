.class Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$UserConsentPersistenceNotifierHolder;
.super Ljava/lang/Object;
.source "UserConsentPersistenceNotifier.java"


# static fields
.field private static mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmUserConsentPersistenceNotifier()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$UserConsentPersistenceNotifierHolder;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$UserConsentPersistenceNotifierHolder;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
