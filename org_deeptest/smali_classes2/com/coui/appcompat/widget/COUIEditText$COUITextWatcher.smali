.class Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;
.super Ljava/lang/Object;
.source "COUIEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "COUITextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIEditText;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/COUIEditText;)V
    .locals 0

    .line 1436
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUIEditText;Lcom/coui/appcompat/widget/COUIEditText$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUIEditText;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/COUIEditText$1;

    .line 1436
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;-><init>(Lcom/coui/appcompat/widget/COUIEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .line 1440
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIEditText$COUITextWatcher;->this$0:Lcom/coui/appcompat/widget/COUIEditText;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIEditText;->hasFocus()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIEditText;->access$400(Lcom/coui/appcompat/widget/COUIEditText;Z)V

    .line 1441
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 1444
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 1447
    return-void
.end method
