.class Lcom/google/flatbuffers/Table$3;
.super Ljava/lang/Object;
.source "Table.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/google/flatbuffers/Table;

.field final synthetic val$bb:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/google/flatbuffers/Table;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/google/flatbuffers/Table$3;->this$0:Lcom/google/flatbuffers/Table;

    iput-object p2, p0, Lcom/google/flatbuffers/Table$3;->val$bb:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/flatbuffers/Table$3;->this$0:Lcom/google/flatbuffers/Table;

    iget-object p0, p0, Lcom/google/flatbuffers/Table$3;->val$bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/flatbuffers/Table;->keysCompare(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 225
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/flatbuffers/Table$3;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method
