.class Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;
.super Ljava/lang/Object;
.source "OutgoingAccountsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccListItemViewTag"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->this$0:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;-><init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;)V

    return-void
.end method
