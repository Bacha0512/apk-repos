.class public final Lcom/weirdvoice/toolbox/DatabaseCProvider$Cdr;
.super Ljava/lang/Object;
.source "DatabaseCProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/toolbox/DatabaseCProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cdr"
.end annotation


# static fields
.field public static final CALL_DATE:Ljava/lang/String; = "calldate"

.field public static final CALL_TYPE:Ljava/lang/String; = "callType"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COST:Ljava/lang/String; = "cost"

.field public static final DST:Ljava/lang/String; = "dst"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final ISO_CODE:Ljava/lang/String; = "ISOCode"

.field public static final RATE:Ljava/lang/String; = "rate"

.field public static final SRC:Ljava/lang/String; = "src"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cdr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider$Cdr;->CONTENT_URI:Landroid/net/Uri;

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
