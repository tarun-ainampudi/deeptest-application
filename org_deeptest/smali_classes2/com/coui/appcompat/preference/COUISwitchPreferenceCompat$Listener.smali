.class Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;
.super Ljava/lang/Object;
.source "COUISwitchPreferenceCompat.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;
    .param p2, "x1"    # Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$1;

    .line 48
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 52
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->isChecked()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->access$100(Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 59
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat$Listener;->this$0:Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/preference/COUISwitchPreferenceCompat;->setChecked(Z)V

    .line 63
    return-void
.end method
