.class Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;
.super Ljava/lang/Object;
.source "ImPersister.java"


# instance fields
.field private final mWhereArgs:[Ljava/lang/String;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1469
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereClause:Ljava/lang/String;

    .line 1465
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getWhereArgs()[Ljava/lang/String;
    .locals 0

    .line 1477
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method getWhereClause()Ljava/lang/String;
    .locals 0

    .line 1473
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereClause:Ljava/lang/String;

    return-object p0
.end method
