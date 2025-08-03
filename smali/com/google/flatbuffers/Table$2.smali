.class Lcom/google/flatbuffers/Table$2;
.super Ljava/lang/ThreadLocal;
.source "Table.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/google/flatbuffers/Table$2;->initialValue()Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Ljava/nio/charset/Charset;
    .locals 0

    .line 46
    const-string p0, "UTF-8"

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method
