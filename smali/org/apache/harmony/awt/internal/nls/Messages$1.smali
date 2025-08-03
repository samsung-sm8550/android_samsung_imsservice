.class Lorg/apache/harmony/awt/internal/nls/Messages$1;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic val$loader:Ljava/lang/ClassLoader;

.field private final synthetic val$locale:Ljava/util/Locale;

.field private final synthetic val$resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    iput-object p3, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$resource:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$locale:Ljava/util/Locale;

    .line 224
    iget-object p0, p0, Lorg/apache/harmony/awt/internal/nls/Messages$1;->val$loader:Ljava/lang/ClassLoader;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 223
    :goto_0
    invoke-static {v0, v1, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object p0

    return-object p0
.end method
