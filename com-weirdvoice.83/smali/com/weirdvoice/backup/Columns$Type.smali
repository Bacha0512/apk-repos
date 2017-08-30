.class final enum Lcom/weirdvoice/backup/Columns$Type;
.super Ljava/lang/Enum;
.source "Columns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/backup/Columns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/weirdvoice/backup/Columns$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN:Lcom/weirdvoice/backup/Columns$Type;

.field public static final enum DOUBLE:Lcom/weirdvoice/backup/Columns$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/weirdvoice/backup/Columns$Type;

.field public static final enum FLOAT:Lcom/weirdvoice/backup/Columns$Type;

.field public static final enum INT:Lcom/weirdvoice/backup/Columns$Type;

.field public static final enum LONG:Lcom/weirdvoice/backup/Columns$Type;

.field public static final enum STRING:Lcom/weirdvoice/backup/Columns$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/weirdvoice/backup/Columns$Type;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/weirdvoice/backup/Columns$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weirdvoice/backup/Columns$Type;->STRING:Lcom/weirdvoice/backup/Columns$Type;

    new-instance v0, Lcom/weirdvoice/backup/Columns$Type;

    const-string v1, "INT"

    invoke-direct {v0, v1, v4}, Lcom/weirdvoice/backup/Columns$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weirdvoice/backup/Columns$Type;->INT:Lcom/weirdvoice/backup/Columns$Type;

    new-instance v0, Lcom/weirdvoice/backup/Columns$Type;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v5}, Lcom/weirdvoice/backup/Columns$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weirdvoice/backup/Columns$Type;->LONG:Lcom/weirdvoice/backup/Columns$Type;

    new-instance v0, Lcom/weirdvoice/backup/Columns$Type;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/weirdvoice/backup/Columns$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weirdvoice/backup/Columns$Type;->FLOAT:Lcom/weirdvoice/backup/Columns$Type;

    new-instance v0, Lcom/weirdvoice/backup/Columns$Type;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v7}, Lcom/weirdvoice/backup/Columns$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weirdvoice/backup/Columns$Type;->DOUBLE:Lcom/weirdvoice/backup/Columns$Type;

    new-instance v0, Lcom/weirdvoice/backup/Columns$Type;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/backup/Columns$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weirdvoice/backup/Columns$Type;->BOOLEAN:Lcom/weirdvoice/backup/Columns$Type;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/weirdvoice/backup/Columns$Type;

    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->STRING:Lcom/weirdvoice/backup/Columns$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->INT:Lcom/weirdvoice/backup/Columns$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->LONG:Lcom/weirdvoice/backup/Columns$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->FLOAT:Lcom/weirdvoice/backup/Columns$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/weirdvoice/backup/Columns$Type;->DOUBLE:Lcom/weirdvoice/backup/Columns$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/weirdvoice/backup/Columns$Type;->BOOLEAN:Lcom/weirdvoice/backup/Columns$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/weirdvoice/backup/Columns$Type;->ENUM$VALUES:[Lcom/weirdvoice/backup/Columns$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/weirdvoice/backup/Columns$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/weirdvoice/backup/Columns$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/backup/Columns$Type;

    return-object v0
.end method

.method public static values()[Lcom/weirdvoice/backup/Columns$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/weirdvoice/backup/Columns$Type;->ENUM$VALUES:[Lcom/weirdvoice/backup/Columns$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/weirdvoice/backup/Columns$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
