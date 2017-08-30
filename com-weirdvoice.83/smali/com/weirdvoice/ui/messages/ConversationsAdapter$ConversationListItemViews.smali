.class public final Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
.super Ljava/lang/Object;
.source "ConversationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/messages/ConversationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationListItemViews"
.end annotation


# instance fields
.field dateView:Landroid/widget/TextView;

.field from:Ljava/lang/String;

.field fromFull:Ljava/lang/String;

.field fromView:Landroid/widget/TextView;

.field position:I

.field quickContactView:Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

.field to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getRemoteNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->from:Ljava/lang/String;

    .line 69
    .local v0, "number":Ljava/lang/String;
    const-string v1, "SELF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->to:Ljava/lang/String;

    .line 72
    :cond_0
    return-object v0
.end method
