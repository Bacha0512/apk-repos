.class public abstract Lcom/mexuar/corraleta/protocol/Binder;
.super Ljava/lang/Object;
.source "Binder.java"


# static fields
.field protected static hex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mexuar/corraleta/protocol/Binder;->hex:[C

    .line 45
    return-void

    .line 43
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enHex([BLjava/lang/Character;)Ljava/lang/String;
    .locals 7
    .param p0, "dig"    # [B
    .param p1, "sep"    # Ljava/lang/Character;

    .prologue
    .line 59
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 60
    .local v3, "ret":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-lt v1, v5, :cond_0

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 61
    :cond_0
    aget-byte v5, p0, v1

    and-int/lit8 v6, v5, 0x7f

    aget-byte v5, p0, v1

    if-gez v5, :cond_2

    const/16 v5, 0x80

    :goto_1
    add-int v4, v6, v5

    .line 62
    .local v4, "v":I
    shr-int/lit8 v0, v4, 0x4

    .line 63
    .local v0, "h":I
    and-int/lit8 v2, v4, 0xf

    .line 64
    .local v2, "l":I
    sget-object v5, Lcom/mexuar/corraleta/protocol/Binder;->hex:[C

    aget-char v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Lcom/mexuar/corraleta/protocol/Binder;->hex:[C

    aget-char v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 60
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "h":I
    .end local v2    # "l":I
    .end local v4    # "v":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public abstract getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;
.end method

.method public abstract getGuiEventSender(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)Lcom/mexuar/corraleta/protocol/ProtocolEventListener;
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/String;Lcom/mexuar/corraleta/protocol/ProtocolEventListener;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract removeFriend(Ljava/lang/String;)Lcom/mexuar/corraleta/protocol/Friend;
.end method

.method public abstract send(Ljava/lang/String;Lcom/mexuar/corraleta/util/ByteBuffer;)V
.end method

.method public abstract stop()V
.end method

.method public abstract unregister(Lcom/mexuar/corraleta/protocol/ProtocolEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
