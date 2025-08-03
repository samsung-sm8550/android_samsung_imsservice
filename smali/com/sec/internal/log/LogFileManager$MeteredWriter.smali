.class Lcom/sec/internal/log/LogFileManager$MeteredWriter;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# instance fields
.field final writer:Ljava/io/Writer;

.field written:J


# direct methods
.method constructor <init>(Ljava/io/Writer;J)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->writer:Ljava/io/Writer;

    .line 144
    iput-wide p2, p0, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->written:J

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 150
    iget-wide v0, p0, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->written:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->written:J

    return-void
.end method
