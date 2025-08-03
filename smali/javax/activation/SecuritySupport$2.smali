.class Ljavax/activation/SecuritySupport$2;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field private final synthetic val$c:Ljava/lang/Class;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljavax/activation/SecuritySupport$2;->val$c:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/activation/SecuritySupport$2;->val$name:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Ljavax/activation/SecuritySupport$2;->val$c:Ljava/lang/Class;

    iget-object p0, p0, Ljavax/activation/SecuritySupport$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
