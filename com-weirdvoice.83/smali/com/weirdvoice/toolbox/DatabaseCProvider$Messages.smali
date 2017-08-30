.class public final Lcom/weirdvoice/toolbox/DatabaseCProvider$Messages;
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
    name = "Messages"
.end annotation


# static fields
.field private static final BODY:Ljava/lang/String; = "body"

.field private static final CONTACT:Ljava/lang/String; = "contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final FROM:Ljava/lang/String; = "sender"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field private static final READ:Ljava/lang/String; = "read"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TO:Ljava/lang/String; = "receiver"

.field private static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/weirdvoice/toolbox/DatabaseCProvider;->AUTHORITY:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/toolbox/DatabaseCProvider;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/messages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/toolbox/DatabaseCProvider$Messages;->CONTENT_URI:Landroid/net/Uri;

    .line 544
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
