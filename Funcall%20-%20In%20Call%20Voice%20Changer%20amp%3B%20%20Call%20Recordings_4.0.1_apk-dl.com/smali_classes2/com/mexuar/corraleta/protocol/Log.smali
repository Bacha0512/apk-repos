.class public Lcom/mexuar/corraleta/protocol/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static ALL:I

.field public static DEBUG:I

.field public static ERROR:I

.field public static INFO:I

.field public static NONE:I

.field public static PROL:I

.field public static VERB:I

.field public static WARN:I

.field private static _level:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const/16 v0, 0x9

    sput v0, Lcom/mexuar/corraleta/protocol/Log;->ALL:I

    .line 36
    const/4 v0, 0x6

    sput v0, Lcom/mexuar/corraleta/protocol/Log;->PROL:I

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/mexuar/corraleta/protocol/Log;->VERB:I

    .line 44
    const/4 v0, 0x4

    sput v0, Lcom/mexuar/corraleta/protocol/Log;->DEBUG:I

    .line 48
    const/4 v0, 0x3

    sput v0, Lcom/mexuar/corraleta/protocol/Log;->INFO:I

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/mexuar/corraleta/protocol/Log;->WARN:I

    .line 56
    sput v1, Lcom/mexuar/corraleta/protocol/Log;->ERROR:I

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/mexuar/corraleta/protocol/Log;->NONE:I

    .line 61
    sput v1, Lcom/mexuar/corraleta/protocol/Log;->_level:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 113
    sget v1, Lcom/mexuar/corraleta/protocol/Log;->_level:I

    sget v2, Lcom/mexuar/corraleta/protocol/Log;->DEBUG:I

    if-lt v1, v2, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getLevel()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/mexuar/corraleta/protocol/Log;->_level:I

    return v0
.end method

.method public static prol(Ljava/lang/String;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 142
    sget v1, Lcom/mexuar/corraleta/protocol/Log;->_level:I

    sget v2, Lcom/mexuar/corraleta/protocol/Log;->VERB:I

    if-lt v1, v2, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 76
    sput p0, Lcom/mexuar/corraleta/protocol/Log;->_level:I

    .line 77
    return-void
.end method

.method public static verb(Ljava/lang/String;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 128
    sget v1, Lcom/mexuar/corraleta/protocol/Log;->_level:I

    sget v2, Lcom/mexuar/corraleta/protocol/Log;->VERB:I

    if-lt v1, v2, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VERB: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 98
    sget v1, Lcom/mexuar/corraleta/protocol/Log;->_level:I

    sget v2, Lcom/mexuar/corraleta/protocol/Log;->WARN:I

    if-lt v1, v2, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static where()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Called From"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "x":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    return-void
.end method
